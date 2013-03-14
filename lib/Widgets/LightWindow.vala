// -*- Mode: vala; indent-tabs-mode: nil; tab-width: 4 -*-
/*
 * Copyright (c) 2012 Granite Developers
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public License as
 * published by the Free Software Foundation; either version 2 of the
 * License, or (at your option) any later version.
 *
 * This is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this program; see the file COPYING.  If not,
 * write to the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
 * Boston, MA 02111-1307, USA.
 *
 * Authored by: Tom Beckmann <tombeckmann@online.de>
 */

namespace Granite.Widgets {

    /**
     * This is always-on-top, non-modal window with a large close button.
     */
    public class LightWindow : DecoratedWindow {

        /**
         * Makes a new Window with the Light Theme
         *
         * @param title title of new window
         */
        public LightWindow (string title = "") {
            base (title, StyleClass.CONTENT_VIEW_WINDOW, StyleClass.CONTENT_VIEW);
        }

        public override bool key_press_event (Gdk.EventKey event) {
            if (event.keyval == Gdk.Key.Escape) {
                this.delete_event (((Gdk.Event*) (&event))->any);
                return true;
            }
            return base.key_press_event (event);
        }
    }

}
