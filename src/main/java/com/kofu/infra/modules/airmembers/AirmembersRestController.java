package com.kofu.infra.modules.airmembers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;


@RestController
@RequestMapping("/rest/member")
public class AirmembersRestController {


	@Autowired
	AirMembersServiceImpl service;
	
	@RequestMapping(value = "", method = RequestMethod.GET)
//	@GetMapping("")
	public List<AirMembers> selectList(AirMembersVo vo) throws Exception {
		List<AirMembers> list = service.selectList(vo);
		return list;
	}
	

	@RequestMapping(value = "/{seq}", method = RequestMethod.GET)
//	@GetMapping("/{seq}")
	public AirMembers selectOne(@PathVariable String seq, AirMembersVo vo) throws Exception {
		vo.setMemberSeq(seq);
		AirMembers item = service.selectOne(vo);
		return item;
	}
	

	
	/*
	 * @RequestMapping(value = "", method = RequestMethod.POST) // @PostMapping("")
	 * public String insert(@RequestBody AirMembers dto) throws Exception {
	 * service.insert(dto); return dto.getMemberSeq(); }
	 * 
	 * 
	 * @RequestMapping(value = "/{seq}", method = RequestMethod.PATCH)
	 * // @PatchMapping("/{seq}") public void update(@PathVariable String
	 * seq, @RequestBody AirMembers dto) throws Exception { dto.setMemberSeq(seq);
	 * service.update(dto); }
	 */
	 
}
