<g:form controller="mail" action="sendEnquiry" class="well" id="contact-us-form">
    <label>Name *</label>
    <input type="text" class="span3" placeholder="Enter your name" class="required">
    <g:if test="${propertyInstance != null}">
        <g:hiddenField name="pId" value="${propertyInstance.id}" />
    </g:if>
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