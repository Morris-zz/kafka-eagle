<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html lang="zh">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>ZK & Kafka - KafkaEagle</title>
    <jsp:include page="../public/plus/css.jsp"></jsp:include>
    <jsp:include page="../public/plus/tcss.jsp"></jsp:include>
</head>

<body>
<jsp:include page="../public/plus/navtop.jsp"></jsp:include>
<div id="layoutSidenav">
    <div id="layoutSidenav_nav">
        <jsp:include page="../public/plus/navbar.jsp"></jsp:include>
    </div>
    <div id="layoutSidenav_content">
        <main>
            <div class="container-fluid">
                <h1 class="mt-4">ZK & Kafka</h1>
                <ol class="breadcrumb mb-4">
                    <li class="breadcrumb-item"><a href="#">ZK & Kafka</a></li>
                    <li class="breadcrumb-item active">Overview</li>
                </ol>
                <div class="alert alert-info alert-dismissable">
                    <button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
                    <i class="fas fa-info-circle"></i> <strong>Cluster
                    information, in the form of tables to demonstrate the Kafka and
                    Zookeeper cluster node IP, port, and its version number</strong> If you
                    don't know the usage of Kafka and Zookeeper, you can visit the
                    website of <a href="http://kafka.apache.org/" target="_blank"
                                  class="alert-link">Kafka</a> and <a
                        href="http://zookeeper.apache.org/" target="_blank"
                        class="alert-link">Zookeeper</a> to view the relevant usage.<br/>
                    <i class="fas fa-info-circle"></i><strong>Note</strong>:&nbsp;Kafka version is <strong>"-"</strong>
                    or JMX Port is <strong>"-1"</strong> maybe kafka broker jmxport disable.<br/>
                </div>
                <!-- content body -->
                <!-- Kafka -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-sitemap"></i> Kafka Cluster Info
                            </div>
                            <div class="card-body">
                                <div id="kafka_cluster_info" class="table-responsive">
                                    <table id="kafka_tab" class="table table-bordered table-hover">
                                        <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>IP</th>
                                            <th>Port</th>
                                            <th>JMX Port</th>
                                            <th>Memory(Used | Percent)</th>
                                            <th>CPU</th>
                                            <th>Created</th>
                                            <th>Modify</th>
                                            <th>Version</th>
                                        </tr>
                                        </thead>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- Zookeeper -->
                <div class="row">
                    <div class="col-lg-12">
                        <div class="card mb-4">
                            <div class="card-header">
                                <i class="fas fa-sitemap"></i> Kafka Zookeeper Info
                            </div>
                            <div class="card-body">
                                <div id="zookeeper_cluster_info" class="table-responsive">
                                    <table id="zk_tab" class="table table-bordered table-hover">
                                        <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>IP</th>
                                            <th>Port</th>
                                            <th>Mode</th>
                                            <th>Version</th>
                                        </tr>
                                        </thead>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <jsp:include page="../public/plus/footer.jsp"></jsp:include>
    </div>
</div>
</body>
<jsp:include page="../public/plus/script.jsp">
    <jsp:param value="main/cluster/cluster.js?v1.4.8" name="loader"/>
</jsp:include>
<jsp:include page="../public/plus/tscript.jsp"></jsp:include>
</html>
