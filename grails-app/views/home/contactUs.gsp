<html>
<head>
    <title>Contact Us</title>
    <meta content="main" name="layout">
</head>

<body>
<div class="row">

    <div class="span4">
        <div id="sidebar">
            <h3 class="header">Contact</h3>

            <p class="contact-us-address">Ian and Co<p/>
            <p class="contact-us-address">10, Westbourne Suites<p/>
            <p class="contact-us-address">Josiah Tongogara Street</p>
            <p class="contact-us-address">(Btwn 8th and 9th Ave.)</p>
            <p class="contact-us-address">Email&nbsp; <a href="mailto:cyian@iwayafrica.co.zw">cyian@iwayafrica.co.zw</a> </p>
            <p class="contact-us-address">P.O. Box 2883, Bulawayo, Zimbabwe</p>
            <br/>
            <p class="contact-us-address">Tel:&nbsp;(09) 886626, 886256</p>
            <p class="contact-us-address">Cell:&nbsp;(+263) 712871455 or (+263) 775306392</p>



        </div>
    </div>

    <div class="span8" style="margin-left: -20px;">
        <h3>Contact Us</h3>
        <p>
            You may contact us using the details listed on the left column of the website.
        </p>
        <p class="business-hours">
            Our Business hours are:
        </p>
        <p class="days"><b>Monday - Friday</b></p>
        <p class="working-hrs">8:00am - 1:00pm </p>
        <p class="working-hrs">2:00pm - 5:00pm</p>
        <br/>
        <p >Fill in form below to send email</p>
        <hr>
        <g:if test="${flash.message !=null}">
            <p style="color:green; font-weight: bold">
                <g:message code="${flash.message}" />
            </p>
        </g:if>
        <g:if test="${flash.error !=null}">
            <p style="color:red; font-weight: bold">
                <g:message code="${flash.error}" />
            </p>
        </g:if>
        <g:form controller="mail" action="sendEnquiry" class="well" id="contact-us-form">
            <label>Name *</label>
            <input type="text" class="span3" placeholder="Enter your name" class="required">

            <label>Email *</label>
            <input type="text" name="email" class="span3" placeholder="Enter your email" class="required email">

            <label>Telephone</label>
            <input type="text" name="telephone" class="span3" placeholder="Enter your telephone">

            <label>Message *</label>
            <textarea name="message" cols="40" rows="5" class="required"></textarea>
            <br/>
            <button type="submit" class="btn">Submit</button>
        </form>
        </g:form>
        %{--<iframe width="450" height="250" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"--}%
                %{--src="http://maps.google.co.uk/maps/ms?msa=0&amp;msid=217109345720946418399.0004bc86ee7dd29e8ee1b&amp;hl=en&amp;ie=UTF8&amp;ll=-20.156798,28.587847&amp;spn=0,0&amp;t=v&amp;output=embed"></iframe>--}%
    %{--</div>--}%

</div>

</body>
</html>