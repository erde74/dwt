﻿/*******************************************************************************
 * Copyright (c) 2000, 2007 IBM Corporation and others. All rights reserved.
 * The contents of this file are made available under the terms
 * of the GNU Lesser General Public License (LGPL) Version 2.1 that
 * accompanies this distribution (lgpl-v21.txt).  The LGPL is also
 * available at http://www.gnu.org/licenses/lgpl.html.  If the version
 * of the LGPL at http://www.gnu.org is different to the version of
 * the LGPL accompanying this distribution and there is any conflict
 * between the two license versions, the terms of the LGPL accompanying
 * this distribution shall govern.
 *
 * Contributors:
 *     IBM Corporation - initial API and implementation
 * Port to the D programming language:
 *     Frank Benoit <benoit@tionex.de>
 *******************************************************************************/
module org.eclipse.swt.internal.Platform;

import java.lang.all;

import org.eclipse.swt.internal.Lock;
import org.eclipse.swt.internal.Library;

public class Platform {
    public static const String PLATFORM = "gtk"; //$NON-NLS-1$
    public static Lock lock;
    static this() {
        lock = new Lock();
    }

    public static bool isLoadable() {
        return Library.isLoadable();
    }
}
