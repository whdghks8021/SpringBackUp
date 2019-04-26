package com.biz.sim.vo;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@AllArgsConstructor
@Setter
@Getter
@NoArgsConstructor
@ToString
public class InoutVO {
	
	private String io_date ;
	private String io_time ;
	private String io_cname ;
	private String io_check ;
	private int io_price ;
	private int io_su ;
	
}
