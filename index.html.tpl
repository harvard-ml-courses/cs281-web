
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
    <meta name="description" content="">
    <meta name="author" content="">

    <link rel="icon" href="../../favicon.ico">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
    <script src="jquery.dataTables.min.js"></script>

    <script src="bib-list.js"></script>

    <link rel="stylesheet" href="bib-publication-list.css" type="text/css" />

    <title>Harvard CS 281</title>

    <!-- Bootstrap core CSS -->

    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="page.css">
  </head>

  <body>
    <div class="row">
    </div>
    <div class="container">
      <div class="panel panel-primary" style="margin-top:10px;background-color:purple;border-color:#000000;">
        <div class="panel-heading" style="background-color:purple;border-color:#2D6ED3;">
          <h1>CS281: Advanced Machine Learning</h1>
          <p class="lead">Harvard University</p>

        </div>
        <div class="panel-footer">
          <ul class="nav nav-pills invert-colors">
            <li><a href="#schedule">Schedule</a></li>
            <li><a href="#grading">Grading</a></li>
            <!-- <li><a href="#faq">FAQ</a></li> -->
          </ul>
        </div>
      </div>
      <div class="container">
        <div class="row container">
      <h3 id="description">Course Info</h3>

      <div class="container ">
        <!-- <div class="panel-body"> -->
        <dl>
          <dt>Instructors</dt>
          <dd> <ul>
              <li>Alexander "Sasha" Rush  <br>
                  OH: Wed 2:30-4, MD 217
              </li>
<li>Email: Piazza preferred or srush at seas.harvard.edu
</li></ul>
          </dd>

        <dt>Lectures</dt>
        <dd> <ul><li>Mon/Wed 1:00-2:30am </li>
<li><a>Maxwell-Dworkin G-115</a>
</li></ul></dd>


        <dt>Teaching Assistants</dt>
        <dd>
          <ul>
            <li>
            {% for ta in tas %}
            {{ta.name}},{% endfor %} and Carl
            </li>
          </ul>
        </dd>

        <dt>Forum and Announcements</dt>
          <dd><ul>
<li><a href="https://piazza.com/harvard/fall2017/cs281">Piazza </a></li></ul></dd>

        <dt>Office Hours</dt>
        <dd>
          <ul>
            {% for oh in ohs %}
            <li>{{oh.time}}: {{oh.location}}</li>
            {% endfor %}
          </ul>
        </dd>
        <dt>References</dt>
          <dd><ul>
              <li> Murphy, <a href="http://harvardcoopbooks.bncollege.com/webapp/wcs/stores/servlet/BNCB_TextbookDetailView?catalogId=10001&item=N&langId=-1&productId=600005699137&storeId=52084">Machine Learning: A Probabilistic Perspective</a>
              <li> Petersen and Pedersen, <a href="http://www2.imm.dtu.dk/pubdb/views/edoc_download.php/3274/pdf/imm3274.pdf">The Matrix Cookbook</a>
              <li> Blei et al, <a href="https://arxiv.org/pdf/1601.00670.pdf">Variational Inference: A Review for Statisticians</a>
</ul>
          </dd>

        <dt>Section Times</dt>
          <dd><ul><li>Fri, 4-5: MD 119</li>
              <!-- <li>Tues, 4-5:30p(extended): Northwest Basement (B105) </li> -->
              <!-- <li> Wed, 4-5,5-6p: MD 119</li> -->
              <!-- <li>Bonus section (math background): Fri Jan 27, time TBD</li></ul> -->
          </dd>

    <dt>Syllabus and Collaboration Policy</dt>
        <dd>
          <ul>

            <li>See the course <a href="syllabus.pdf">syllabus</a>
</ul>
        </dd>


     <dt>Links</dt>
        <dd>
          <ul>
            <li><a href="https://classroom.github.com/assignment-invitations/9356a5cc64112274d9e93f77cd214d93">GitHub Classrooms</a></li>
            <li><a href="https://canvas.harvard.edu/courses/29707">Canvas Site</a></li>
            <li><a href="https://github.com/harvard-ml-courses/cs281-f17-homework/guidelines/practical-logistics.pdf">Practical Guidelines</a></li>
            <li><a href="https://github.com/harvard-ml-courses/cs281-f17-homework/practical-template.pdf">Practical Template</a></li>
            <li><a href="lectures/Style_Guide.pdf">Style Guide</a></li>
          </ul>
        </dd>

      </dl>
      </div>
      </div>
        <hr>
        <hr>
        <div class="row container">
          <h3 id="schedule">Schedule</h3>


      <table class="table">
        <tr><th>Date</th> <th>Area</th> <th>Topic</th><th>Demos </th><th>Readings</th><th>Assignment (DUE: Fri 5pm of this week)</th></tr>
        {% for lecture in lectures %}
        <tr class = {{lecture.active|default("",true)}}>
          <td> {{dates[loop.index]}} </td> <td> {{lecture.topic | default("",true)}} </td>
          <td> {{lecture.subtopic|default("", true)}}</td>
          <td>
            {{lecture.demos|default("", true)}}
          </td>
          <td>
            {{lecture.papers|default("", true)}}
          </td>

          <td> {{lecture.hw | default("",true)}}</td>
        </tr>
        {% endfor %}
      </table>
      </div>

      <hr>


      <div class="row container">
        <h3 id="grading">Grading</h3>

        <p class="container">
          Grades are determined by four aspects of the class:
          <ul>
            <li> Assignments (35%) </li>
            <li> In-Class Quizzes (10%) </li>
            <li> Midterm Exam  (15%) </li>
            <li> Final Project (40%) </li>
          </ul>
        </p>
      </div>


      <!-- <div class="row container"> -->
      <!-- <h3 id="faq">FAQ</h3> -->
      <!-- <p class="container"> -->
      <!--     <ul> -->
      <!--       <li> <p> </p> -->
      <!--     </ul> -->
      <!-- </p> -->
      <!-- </div> -->




    </div> <!-- /container -->


  </body>
</html>



<head>


</head>
<html>

</html>
