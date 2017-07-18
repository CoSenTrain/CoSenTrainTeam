<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<style>
.jumbotron {
	background-image: url('/web/img/admin/foggyRailTrack.jpg');
	background-repeat: no-repeat;
	background-position: center;
	-webkit-background-size: cover;
	-moz-background-size: cover;
	-o-background-size: cover;
	background-size: cover;
	background-position: center;
}
</style>

<div class="jumbotron" style="margin-bottom: 0px;">
	<div class="container">
		<div class="btn-group btn-group-justified" data-toggle="buttons-radio">
			<div class="btn-group">
				<button type="button" class="btn btn-primary active" value="ticket">티켓</button>
			</div>
			<div class="btn-group">
				<button type="button" class="btn btn-primary" value="users">회원</button>
			</div>
			<div class="btn-group">
				<button type="button" class="btn btn-primary" value="point">포인트</button>
			</div>
			<div class="btn-group">
				<button type="button" class="btn btn-primary" value="payment">결제</button>
			</div>
		</div>
		<form action="#" method="post" name="ticketNoFrm">
			<div class="input-group input-group-lg">
				<input type="hidden" name="targetTable" />
				<input type="text" name="ticketNo" class="form-control" placeholder="Ticket Number">
				<div class="input-group-btn">
					<button class="btn btn-default" type="submit">
						<i class="glyphicon glyphicon-search"></i>
					</button>
				</div>
			</div>
		</form>
	</div>
</div>
<!--
url('https://media.licdn.com/media/AAEAAQAAAAAAAANbAAAAJDE5NjBkNDk1LTY3ZGQtNDA0NS04YTJiLTdkNmU3NjZiNjI3Mg.png');-webkit-background-size: cover;-moz-background-size: cover;-o-background-size: cover;background-size: cover;
-->
<script>
$(function() {
	$('.jumbotron .btn-group button').click(function() {
		$('.jumbotron .btn-group button').removeClass(" active");
		$(this).addClass(" active");
		ticketNoFrm.targetTable.value = $(this)[0].value;
	});
	$('.jumbotron .btn-group button:eq(0)').click();
});
</script>