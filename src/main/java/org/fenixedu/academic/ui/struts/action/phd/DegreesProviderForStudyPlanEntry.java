/**
 * Copyright © 2002 Instituto Superior Técnico
 *
 * This file is part of FenixEdu Academic.
 *
 * FenixEdu Academic is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * FenixEdu Academic is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with FenixEdu Academic.  If not, see <http://www.gnu.org/licenses/>.
 */
package org.fenixedu.academic.ui.struts.action.phd;

import java.util.SortedSet;
import java.util.TreeSet;

import org.fenixedu.academic.domain.Degree;
import org.fenixedu.academic.domain.degree.DegreeType;
import org.fenixedu.academic.ui.renderers.providers.AbstractDomainObjectProvider;

public class DegreesProviderForStudyPlanEntry extends AbstractDomainObjectProvider {

    @Override
    public Object provide(Object source, Object current) {

        final SortedSet<Degree> result = new TreeSet<Degree>(Degree.COMPARATOR_BY_DEGREE_TYPE_AND_NAME_AND_ID);

        result.addAll(Degree.readAllMatching(DegreeType.oneOf(DegreeType::isAdvancedFormationDiploma,
                DegreeType::isAdvancedSpecializationDiploma, DegreeType::isBolonhaDegree, DegreeType::isIntegratedMasterDegree,
                DegreeType::isBolonhaMasterDegree)));

        return result;

    }
}
