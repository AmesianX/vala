/*
 * Valadoc - a documentation tool for vala.
 * Copyright (C) 2008 Florian Brosch
 * 
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.
 */


using Vala;
using GLib;
using Gee;


public class Valadoc.EnumValue: DocumentedElement {
	private Vala.EnumValue venval;

	public EnumValue ( Valadoc.Settings settings, Vala.EnumValue venval, Enum parent, Tree head ) {
		this.vcomment = venval.comment;
		this.settings = settings;
		this.vsymbol = venval;
		this.venval = venval;
		this.parent = parent;
		this.head = head;
	}

	public string get_cname () {
		return this.venval.get_cname ();
	}

	public bool is_venumvalue ( Vala.EnumValue venval ) {
		return ( this.venval == venval );
	}

	public void parse_comment ( DocumentationParser docparser ) {
		this.parse_comment_helper ( docparser );
	}

	public void write ( Langlet langlet, void* ptr ) {
		langlet.write_enum_value ( this, ptr );
	}

	public void visit ( Doclet doclet ) {
		doclet.visit_enum_value ( this );
	}
}

