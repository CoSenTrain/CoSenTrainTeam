<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
		<!-- The Select Station Modal -->
		<div id="selectCalendarModal" class="sel-calendar-modal">
		
			<!-- Modal content -->
			<div class="modal-content">
				<div class="modal-header">
					<span id="selectCalendarClose">&times;</span>
					<h2>��¥ ���� - <b id="curSelectedOnCal">2017.04.02</b></h2>
				</div>
				<div class="modal-background">
					<div class="calendar-wrapper">
						<div class="month">		
							<ul>
								<li style="text-align:center">
									<span class="monthName">August</span><br />
									<span class="yyyy" style="font-size:18px"></span>
								</li>
							</ul>
						</div>
						
						<ul class="weekdays">
							<li>��</li>
							<li>��</li>
							<li>ȭ</li>
							<li>��</li>
							<li>��</li>
							<li>��</li>
							<li>��</li>
						</ul>
						
						<ul id="firstDaysList" class="days">	
							<li></li>
							<li class="unavailable">1</li>
							<li class="unavailable">9</li>
							<li><span class="active">10</span></li>
							<li class="available">11</li>
							<li class="available">31</li>
						</ul>
						
					</div>
					<div class="calendar-wrapper" style="display: none;">
						<div class="month">		
							<ul>
								<li style="text-align:center">
									<span class="monthName">August</span><br />
									<span class="yyyy" style="font-size:18px"></span>
								</li>
							</ul>
						</div>
						
						<ul class="weekdays">
							<li>��</li>
							<li>��</li>
							<li>ȭ</li>
							<li>��</li>
							<li>��</li>
							<li>��</li>
							<li>��</li>
						</ul>
						
						<ul id="secondDaysList" class="days">	
							<li></li>
							<li class="unavailable">1</li>
							<li class="unavailable">9</li>
							<li><span class="active">10</span></li>
							<li class="available">11</li>
							<li class="available">31</li>
						</ul>
						
					</div>
				</div>
			</div>
		</div>
		
		<div id="selCalModalSnackbar" style="cursor: default;" >Double Click to Choose ..!!</div>