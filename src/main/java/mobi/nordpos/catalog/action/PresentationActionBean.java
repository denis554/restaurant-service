/**
* Copyright (c) 2012-2014 Nord Trading Network.
*
* Licensed under the Apache License, Version 2.0 (the "License"); you may not
* use this file except in compliance with the License. You may obtain a copy of
* the License at
*
* http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
* WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
* License for the specific language governing permissions and limitations under
* the License.
*/
package mobi.nordpos.catalog.action;

import net.sourceforge.stripes.action.DefaultHandler;
import net.sourceforge.stripes.action.ForwardResolution;
import net.sourceforge.stripes.action.Resolution;

/**
 * @author Andrey Svininykh <svininykh@gmail.com>
 */
public class PresentationActionBean extends BaseActionBean {

    private static final String PRESENT = "/WEB-INF/jsp/present.jsp";

    @DefaultHandler
    public Resolution present() {
        setHomePageFlag(true);
        return new ForwardResolution(PRESENT);
    }
}
