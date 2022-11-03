package com.kofu.infra.modules.airmembers;

import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kofu.infra.modules.code.CodeServiceImpl;



@Controller
public class AirMembersController {

	@Autowired
	AirMembersServiceImpl service;
	
// 리스트 화면
	@RequestMapping(value = "/xadmin/memberlist")
	public String MemberList(@ModelAttribute("vo")AirMembersVo vo,Model model) throws Exception {
		
		System.out.println("vo.getShValue(): " + vo.getShValue());
		System.out.println("vo.getShOption(): " + vo.getShOption());
		
		vo.setParamsPaging(service.selectOneCounting(vo));
		List<AirMembers> list = service.selectList(vo);
		model.addAttribute("list", list);
		
		return "infra/member/xdmin/airMemberList";
	}

//회원정보 뷰 페이지
	@RequestMapping(value = "/xadmin/memberView")
	public String memberView() {
		return "infra/member/xdmin/airMemberView";
	}

//셀렉트 원
	@RequestMapping(value = "/xadmin/selectOne")
	public String selectOne(AirMembersVo vo,Model model) throws Exception{
		AirMembers result = service.selectOne(vo);
		model.addAttribute("item",result);
		return "";
	}

	@RequestMapping("/excelDownload")
    public void excelDownload(AirMembersVo vo, HttpServletResponse httpServletResponse) throws Exception {
		
		/*
		 * setSearch(vo); vo.setParamsPaging(service.selectOneCount(vo));
		 */
		
			List<AirMembers> list = service.selectList(vo);
			
//			Workbook workbook = new HSSFWorkbook();	// for xls
	        Workbook workbook = new XSSFWorkbook();
	        Sheet sheet = workbook.createSheet("Sheet1");
	        CellStyle cellStyle = workbook.createCellStyle();        
	        Row row = null;
	        Cell cell = null;
	        int rowNum = 0;
			
//	        each column width setting	        
	        sheet.setColumnWidth(0, 2100);
	        sheet.setColumnWidth(1, 3100);

//	        Header
			String[] tableHeader = { "Seq", "이름", "아이디","성별","배우는언어"};

	        row = sheet.createRow(rowNum++);
	        
			for(int i=0; i<tableHeader.length; i++) {
				cell = row.createCell(i);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
				cell.setCellValue(tableHeader[i]);
			}

//	        Body
	        for (int i=0; i<list.size(); i++) {
	            row = sheet.createRow(rowNum++);
	            
//	            String type: null 전달 되어도 ok
//	            int, date type: null 시 오류 발생 하므로 null check
//	            String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅	            
	            
	            cell = row.createCell(0);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	            cell.setCellValue(Integer.parseInt(list.get(i).getMemberSeq()));
	            
	            cell = row.createCell(1);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getUser_name());
	        	
	            cell = row.createCell(2);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getUser_id());
	        	
				
			  cell = row.createCell(3); 
			  cellStyle.setAlignment(HorizontalAlignment.CENTER);
			  cell.setCellStyle(cellStyle); 
			  	if(list.get(i).getUser_gender() != null)
			  cell.setCellValue(CodeServiceImpl.selectOneCachedCode(list.get(i).getUser_gender()));
				  
				  cell = row.createCell(4); 
				  cellStyle.setAlignment(HorizontalAlignment.CENTER);
				  cell.setCellStyle(cellStyle); if(list.get(i).getUser_favoriteLanguage() != null)
				  cell.setCellValue(CodeServiceImpl.selectOneCachedCode(list.get(i).getUser_favoriteLanguage()));
				/*
				 * cell = row.createCell(4); cellStyle.setAlignment(HorizontalAlignment.CENTER);
				 * cell.setCellStyle(cellStyle); cell.setCellValue(list.get(i).getIfmmDob());
				 * 
				 * cell = row.createCell(5); cellStyle.setAlignment(HorizontalAlignment.CENTER);
				 * cell.setCellStyle(cellStyle);
				 * cell.setCellValue(list.get(i).getIfmeEmailFull());
				 * 
				 * cell = row.createCell(6); cellStyle.setAlignment(HorizontalAlignment.CENTER);
				 * cell.setCellStyle(cellStyle); cell.setCellValue(list.get(i).getIfmpNumber());
				 * 
				 * cell = row.createCell(7); cellStyle.setAlignment(HorizontalAlignment.CENTER);
				 * cell.setCellStyle(cellStyle); if(list.get(i).getRegDateTime() != null)
				 * cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getRegDateTime())
				 * );
				 * 
				 * cell = row.createCell(8); cellStyle.setAlignment(HorizontalAlignment.CENTER);
				 * cell.setCellStyle(cellStyle); if(list.get(i).getModDateTime() != null)
				 * cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getModDateTime())
				 * );
				 */
	        }

	        httpServletResponse.setContentType("ms-vnd/excel");
//	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		
    }
	

}
