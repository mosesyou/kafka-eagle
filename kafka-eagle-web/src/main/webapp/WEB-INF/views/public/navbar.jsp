<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- Navigation -->
<nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse"
			data-target=".navbar-ex1-collapse">
			<span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span>
			<span class="icon-bar"></span> <span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="/ke"> Kafka Eagle</a>
		<div class="modal fade" aria-labelledby="mfModalLabel"
			aria-hidden="true" id="ke_account_reset_dialog" tabindex="-1"
			role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<button class="close" type="button" data-dismiss="modal">×</button>
						<h4 class="modal-title" id="keModalLabel">Reset password</h4>
					</div>
					<!-- /.row -->
					<form role="form" action="/ke/account/reset/" method="post"
						onsubmit="return contextFormValid();return false;">
						<div class="modal-body">
							<fieldset class="form-horizontal">
								<div class="form-group">
									<label for="path" class="col-sm-2 control-label">New</label>
									<div class="col-sm-10">
										<input id="mf_new_password_name" name="ke_new_password_name"
											type="password" class="form-control" maxlength="16"
											placeholder="New Password">
									</div>
								</div>
								<div id="alert_mssage" style="display: none"
									class="alert alert-danger">
									<label> Passwords can only be data and letters or
										special symbols .</label>
								</div>
							</fieldset>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-default"
								data-dismiss="modal">Cancle</button>
							<button type="submit" class="btn btn-primary" id="create-btn">Submit
							</button>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>
	<!-- Top Menu Items -->
	<ul class="nav navbar-right top-nav">
		<li class="dropdown"><a href="#" class="dropdown-toggle"
			data-toggle="dropdown"><i class="fa fa-sitemap"></i>
				${clusterAlias} </a></li>
		<li class="dropdown"><a href="#" class="dropdown-toggle"
			data-toggle="dropdown"><i class="fa fa-bookmark"></i> V1.1.6 </a></li>
		<li class="dropdown"><a href="#" class="dropdown-toggle"
			data-toggle="dropdown" aria-expanded="false"><i
				class="fa fa-user"></i> ${LOGIN_USER_SESSION.realname} <b
				class="caret"></b></a>
			<ul class="dropdown-menu">
				<li><a name="ke_account_reset" href="#"><i
						class="fa fa-fw fa-gear"></i> Reset</a></li>
				<li><a href="/ke/account/signout"><i
						class="fa fa-fw fa-power-off"></i> Signout</a></li>
			</ul></li>
	</ul>
	<!-- Sidebar Menu Items - These collapse to the responsive navigation menu on small screens -->
	<div class="collapse navbar-collapse navbar-ex1-collapse">
		<ul class="nav navbar-nav side-nav">
			<li id="navbar_dash"><a href="/ke"><i
					class="fa fa-fw fa-dashboard"></i> Dashboard</a></li>
			<li><a href="#" data-toggle="collapse" data-target="#demo"><i
					class="fa fa-fw fa-comments-o"></i> Topic <i
					class="fa fa-fw fa-caret-down"></i></a>
				<ul id="demo" class="collapse">
					<li id="navbar_create"><a href="/ke/topic/create"><i
							class="fa fa-edit fa-fw"></i> Create</a></li>
					<li id="navbar_list"><a href="/ke/topic/list"><i
							class="fa fa-table fa-fw"></i> List</a></li>
					<li id="navbar_list"><a href="/ke/topic/message"><i
							class="fa fa-file-text fa-fw"></i> Message</a></li>
					<li id="navbar_list"><a href="/ke/topic/mock"><i
							class="fa fa-maxcdn fa-fw"></i> Mock</a></li>
				</ul></li>
			<li id="navbar_consumers"><a href="/ke/consumers"><i
					class="fa fa-fw fa-users"></i> Consumers</a></li>
			<li><a href="#" data-toggle="collapse" data-target="#demo2"><i
					class="fa fa-fw fa-cloud"></i> Cluster <i
					class="fa fa-fw fa-caret-down"></i></a>
				<ul id="demo2" class="collapse">
					<li id="navbar_cli"><a href="/ke/cluster/info"><i
							class="fa fa-sitemap fa-fw"></i> ZK & Kafka</a></li>
					<li id="navbar_cli"><a href="/ke/cluster/multi"><i
							class="fa fa-maxcdn fa-fw"></i> Multi-Clusters</a></li>
					<li id="navbar_zk"><a href="/ke/cluster/zkcli"><i
							class="fa fa-terminal fa-fw"></i> ZkCli</a></li>
				</ul></li>
			<li><a href="#" data-toggle="collapse" data-target="#demo4"><i
					class="fa fa-fw fa-eye"></i> Metrics <i
					class="fa fa-fw fa-caret-down"></i></a>
				<ul id="demo4" class="collapse">
					<li id="navbar_cli"><a href="/ke/metrics/brokers"><i
							class="fa fa-sitemap fa-fw"></i> Brokers</a></li>
					<!-- <li id="navbar_cli"><a href="/ke/metrics/trend"><i
							class="fa fa-bar-chart-o fa-fw"></i> Trend</a></li> -->
				</ul></li>
			<li><a href="#" data-toggle="collapse" data-target="#demo1"><i
					class="fa fa-fw fa-bell"></i> Alarm <i
					class="fa fa-fw fa-caret-down"></i></a>
				<ul id="demo1" class="collapse">
					<li id="navbar_add"><a href="/ke/alarm/add"><i
							class="fa fa-info-circle fa-fw"></i> Add</a></li>
					<li id="navbar_modify"><a href="/ke/alarm/modify"><i
							class="fa fa-edit fa-fw"></i> Modify</a></li>
				</ul></li>
			<li><a href="#" data-toggle="collapse" data-target="#demo3"><i
					class="fa fa-fw fa-cog"></i> System <i
					class="fa fa-fw fa-caret-down"></i></a>
				<ul id="demo3" class="collapse">
					<li><a href="/ke/system/user"><i class="fa fa-user fa-fw"></i>
							User</a></li>
					<li><a href="/ke/system/role"><i class="fa fa-key fa-fw"></i>
							Role</a></li>
					<li><a href="/ke/system/resource"><i
							class="fa fa-folder-open fa-fw"></i> Resource</a></li>
					<!-- <li><a href="/ke/system/notice"><i
							class="fa fa-bullhorn fa-fw"></i> Notice</a></li> -->
				</ul></li>
		</ul>
	</div>
	<!-- /.navbar-collapse -->
</nav>
<script type="text/javascript">
	function contextFormValid() {
		var ke_new_password_name = $("#ke_new_password_name").val();
		var reg = /^[u4E00-u9FA5]+$/;
		if (ke_new_password_name.length == 0 || !reg.test(ke_new_password_name)) {
			$("#alert_mssage").show();
			setTimeout(function() {
				$("#alert_mssage").hide()
			}, 3000);
			return false;
		}

		return true;
	}
</script>