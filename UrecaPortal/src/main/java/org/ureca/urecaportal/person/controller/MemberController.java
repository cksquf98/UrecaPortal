package org.ureca.urecaportal.person.controller;

import java.sql.SQLException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.ServletRequestBindingException;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;



import jakarta.servlet.http.HttpSession;
import org.ureca.urecaportal.person.dto.Member;
import org.ureca.urecaportal.person.dto.Seat;
import org.ureca.urecaportal.person.model.service.MemberService;
import org.ureca.urecaportal.person.model.service.SeatService;

@Controller
@RequestMapping("/UrecaPortal")
public class MemberController {

	@Autowired
	MemberService service;// service=null;기본값

	@Autowired
	SeatService seatService;

	@GetMapping("/")
	public String Home() {
		return "home";
	}

	@GetMapping("/login")
	public String login() {

		return "login";
	}

	@PostMapping("/login")
	public String loginMember(Member member, HttpSession session, RedirectAttributes redirectAttributes) {
		// 디비 로그인
		System.out.println(member);

		try {
			int check = service.loginCheck(member);

			if (check > 0) {
				session.setAttribute("loginId", member.getId());
				System.out.println(session.getAttribute("loginId"));
				return "redirect:memberHome";
			} else {
				redirectAttributes.addFlashAttribute("error", "로그인 실패");
			}

		} catch (SQLException e) {
			e.printStackTrace();
			redirectAttributes.addFlashAttribute("error", "로그인 실패");
		}
		return "redirect:/UrecaPortal/login";
	}

	@GetMapping("/signup")
	public String signup() {
		return "signup";
	}

	@PostMapping("/signup")
	public String register(Member member, RedirectAttributes redirectAttributes) {

		try {
			int idCheck = service.idCheck(member.getId());
			System.out.println("idCheck : " + idCheck);
			if (idCheck == -1) {
				int addCheck = service.add(member);
				if (addCheck > 0) {
					System.out.println(addCheck);
					redirectAttributes.addFlashAttribute("success", "회원가입 성공\n로그인 후 이용 가능합니다.");
					return "redirect:login";
				} else {
					redirectAttributes.addFlashAttribute("error", "회원가입 실패");
				}
			} else {
				redirectAttributes.addFlashAttribute("error", "아이디 중복");
			}

		} catch (IllegalArgumentException e) {
			redirectAttributes.addFlashAttribute("error", "아이디 중복");
		} catch (SQLException e) {
			redirectAttributes.addFlashAttribute("error", "회원가입 실패");

		}
		return "redirect:signup";
	}

	@GetMapping("/memberHome")
	public String memberHome(HttpSession session, Model model) {
		String loginId = (String) session.getAttribute("loginId");

		System.out.println(loginId);

		if(loginId == null) {
			return "redirect:home";
		}
		try {
			List<Member> members = service.readAll();
			System.out.println(members);

			List<Seat> seats = seatService.readAll();

			System.out.println("Seats List >>> "+seats);

			model.addAttribute("members", members);
			model.addAttribute("seats", seats);
		} catch (SQLException e) {
			e.printStackTrace();
		}

        return "memberHome";
	}

	@GetMapping("/myPage")
	public String myPage(Model model, @SessionAttribute("loginId") String loginId) {

		try {
			Member member = service.read(loginId);
			System.out.println("MyPage : " + member);
			model.addAttribute("member", member);

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return "myPage";
	}

	@PostMapping("/myPage")
	public String myPage(@SessionAttribute("loginId") String loginId,
						 @ModelAttribute Member member,
						 String password,
						 RedirectAttributes redirectAttributes) {

		try {
			member.setId(loginId);
			member.setPassword(password);
//			System.out.println("loc  : " + member.getLocation());
//			System.out.println("POST >>> MyPage : " + member);

			int check = service.edit(member);
			System.out.println(check);

			if (check > 0) {
				redirectAttributes.addFlashAttribute("success", "수정 완료");
			} else {
				redirectAttributes.addFlashAttribute("error", "수정 실패");

			}

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return "redirect:myPage";
	}

	@GetMapping("/seat")
	public String seat(Model model) {

		try {
			List<Seat> seats = seatService.readAll();
			model.addAttribute("seats", seats);

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return "seat";
	}

	@PostMapping("/change")
	@ResponseBody
	public List<Member> change() {
		try {
			List<Member> seatMembers = service.allocateSeat();
			return seatMembers;

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	@PostMapping("/confirm")
	public String confirm(@RequestBody List<Seat> newSeats) {
		System.out.println(newSeats);
		try {
			for (Seat seat : newSeats) {
				int check = seatService.confirm(seat.getSeats_idx(), seat.getSeat_owner1(), seat.getSeat_owner2());
				System.out.println(check);
				if(check < 0) {
					System.out.println("FAIL : "+seat);
				}
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
        return "seat";
    }

    @GetMapping("/logout")
    public String logout(SessionStatus sessionStatus) {
        sessionStatus.setComplete();
        return "home";
    }
}