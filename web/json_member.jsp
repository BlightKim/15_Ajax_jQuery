<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Ajax JSON</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
</head>
<body>
<h1>Ajax JSON 데이터 요청 처리</h1>
<button id="getDataBtn">Ajax - JSON 데이터 가져오기</button>
<hr>
<table border>
  <thead>
  <tr>
    <th>번호</th>
    <th>이름</th>
    <th>나이</th>
    <th>주소</th>
    <th>날짜</th>
  </tr>
  </thead>
  <tbody id="tbody">
  <tr>
    <td>1</td>
    <td>홍길동-샘플</td>
    <td>27</td>
    <td>서울</td>
    <td>2023-04-17</td>
  </tr>
  </tbody>
</table>
<hr>
<a href="javascript:getJsonMembersName('홍길동')">JSON 데이터 조회</a>
<script>
  function getJsonMembersName(name) {
    alert("getJsonMembersName(" + name + ") 실행 !");
    $.ajax("getJsonMembers", {
      type: "get",
      data: "name=" + encodeURIComponent(name),
      dataType: "json",
      success: (data) => {
        alert("Ajax 성공 - 응답데이터 : " + data);
        let html = "";
        let aList = data.list;
        $.each(aList, (index, member) => {
          html += "<tr>";
          html += "<td>" + this.idx + "</td>";
          html += "<td>" + this.name + "</td>";
          html += "<td>" + this.age + "</td>";
          html += "<td>" + this.address + "</td>";
          html += "<td>" + this.regDate + "</td>";
          html += "</tr>";
        });
        $("#tbody").html(html);
      },
      error: () => {
        alert("Ajax 실패!!!");
      }
    });
  }

  // $(document).ready(() => {
  //   $("#getDataBtn").click(getJsonMembers);
  // });
  //
  // function getJsonMembers() {
  //   alert(">> getJsonMembers() 실행 !");
  //
  //   // $.ajax(url, {});
  //   $.ajax("getJsonMembers", {
  //     url: "getJsonMembers",
  //     type: "get",
  //     dataType: "json", // 응답받을 데이터 타입
  //     success: function (data) {
  //       alert("Ajax 처리 성공 - 응답받은 데이터 : " + data);
  //       console.log(data);
  //       console.log(data.list);
  //
  //       let htmlTag = "";
  //       let alist = data.list;
  //       $.each(alist, (index, member) => {
  //         console.log(index + ", " + member.idx + ", " + member.name)
  //         console.log(this);
  //         console.log("this.idx : " + this.idx + ", this.name : " + this.name);
  //
  //         htmlTag += "<tr>"
  //         htmlTag += "<td>" + this.idx + "</td>"
  //         htmlTag += "<td>" + this.name + "</td>"
  //         htmlTag += "<td>" + this.age + "</td>"
  //         htmlTag += "<td>" + this.address + "</td>"
  //         htmlTag += "<td>" + this.regDate + "</td>"
  //         htmlTag += "</tr>";
  //       });
  //       $("#tbody").
  //     },
  //     error: function (jqXHR, textStatus, errorThrown) {
  //       alert("Ajax 처리 실패 : \n"
  //           + "jqXHR.readyState : " + jqXHR.readyState + "\n"
  //           + "textStatus : " + textStatus + "\n"
  //           + "errorThrown : " + errorThrown);
  //     }
  //   });
  // }
</script>
</body>
</html>