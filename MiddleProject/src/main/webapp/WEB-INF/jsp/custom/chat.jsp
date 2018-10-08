<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<title>Hello WebSocket</title>
<!-- <link href="../../../bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
<link href="../../../bootstrap/css/chat.css" rel="stylesheet">
</head>
<body>
	<noscript>
		<h2 style="color: #ff0000">Seems your browser doesn't support
			Javascript! Websocket relies on Javascript being enabled. Please
			enable Javascript and reload this page!</h2>
	</noscript>
	<!-- <div id="main-content" class="container"> -->
		<div class="row">
			<div>
				<div class="chat-panel panel panel-default">
					<div class="panel-heading">
						<i class="fa fa-comments fa-fw"></i> Chat
					</div>
					<!-- /.panel-heading -->
					<div class="panel-body">
						<ul class="chat" id="chat">
						</ul>
					</div>
					<!-- /.panel-body -->
					<div class="panel-footer">
						<form class="form">
							<div class="form-group">
								<div class="input-group">
									<input id="btn-input" type="text" class="form-control input-sm"
										placeholder="Type your message here..." autocomplete="off">
										<span class="input-group-btn">
											<button class="btn btn-warning btn-sm" id="btn-chat" type="submit">
											Send
											</button>
										</span>
								</div>
							</div>
						</form>
					</div>
					<!-- /.panel-footer -->
				</div>
			</div>
		</div>
		<div class="row" style="visibility:hidden;">
			<div>
				<form class="form-inline">
					<div class="form-group">
						<label for="connect">WebSocket connection</label><br>
						<button id="connect" class="btn btn-default" type="submit">Connect</button>
						<button id="disconnect" class="btn btn-default" type="submit"
							disabled="disabled">Disconnect</button>
					</div>
				</form>
			</div>
			<div>
				<form >
					<div class="form-group">
						<label for="name">이름</label>
						<input type="text" id="name" class="form-control" value="${member_id}">
					</div>
				</form>
			</div>
		</div>
	<!-- </div> -->
</body>
<script src="/webjars/jquery/jquery.min.js"></script>
<script src="/webjars/sockjs-client/sockjs.min.js"></script>
<script src="/webjars/stomp-websocket/stomp.min.js"></script>
<script src="../../../bootstrap/js/app.js"></script>