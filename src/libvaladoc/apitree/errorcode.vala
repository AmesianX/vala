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


public class Valadoc.ErrorCode : DocumentedElement {
	private Vala.ErrorCode verrcode;

	public ErrorCode ( Valadoc.Settings settings, Vala.ErrorCode verrcode, ErrorDomain parent, Tree head ) {
		this.vcomment = verrcode.comment;
		this.settings = settings;
		this.verrcode = verrcode;
		this.vsymbol = verrcode;
		this.parent = parent;
		this.head = head;
	}

	public string get_cname () {
		return this.verrcode.get_cname ();
	}

	public bool is_verrorcode ( Vala.ErrorCode verrcode ) {
		return ( this.verrcode == verrcode );
	}

	public void write ( Langlet langlet, void* ptr ) {
		langlet.write_error_code ( this, ptr );
	}

	public void parse_comment ( DocumentationParser docparser ) {
		this.parse_comment_helper ( docparser );
	}

	public void visit ( Doclet doclet ) {
		doclet.visit_error_code ( this );
	}
}

