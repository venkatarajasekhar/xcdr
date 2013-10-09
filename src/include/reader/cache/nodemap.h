// ==========================================================================
//
// XCDR, Version 1.0
//
// Copyright (c) 2003 Thomas D. Marsh. All rights reserved.
//
// ==========================================================================
//
// Redistribution and use is subject to agreement with the author(s). See
// the doc/LICENSE file for more details.
//
// THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESSED OR IMPLIED
// WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
// OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
// DISCLAIMED.  IN NO EVENT SHALL THE APACHE SOFTWARE FOUNDATION OR
// ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
// SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
// LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
// USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
// ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
// OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
// OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
// SUCH DAMAGE.
//
// =========================================================================
//
// $Source: /usr/local/cvs/xcdr/src/include/reader/cache/nodemap.h,v $
// $Revision: 1.3 $
// $Date: 2003/04/04 16:03:58 $
// $Author: tmarsh $
//
// -------------------------------------------------------------------------
//
// $Log: nodemap.h,v $
// Revision 1.3  2003/04/04 16:03:58  tmarsh
// namespace changes
//
// Revision 1.2  2003/03/09 08:44:12  tmarsh
// include file reorganization
//
// Revision 1.1  2003/03/09 08:35:32  tmarsh
// include file reorganization
//
// Revision 1.5  2003/03/07 18:09:01  tmarsh
// updates for new rdbms and repository
//
// Revision 1.4  2003/03/06 11:20:03  tmarsh
// updated headers
//
//
// =========================================================================

#ifdef  XCDR_NODEMAP_H
#error "Header contains static declarations and can only be included once."
#else
#define XCDR_NODEMAP_H

#include "rdbms/rdbms.h"

XCDR_NAMESPACE_BEGIN

struct NodeMapData
{
	unsigned int i_node;
	unsigned int i_type;
};

class NodeMap : public RDBMS::Cache::Base<std::string, NodeMapData>
{
public:
	inline NodeMap(RDBMS::Context *context = NULL,
		       unsigned int min_results = 0,
		       unsigned int max_results = 1000,
		       unsigned int max_age = 3600)
		: RDBMS::Cache::Base<std::string, NodeMapData>(context,
							  min_results,
							  max_results,
							  max_age) {}


	inline void buildQuery(RDBMS::Query &query, const std::string &id)
	{
		query << "SELECT i_node, i_type "
		      << "FROM Nodes WHERE identifier = \""
		      << id << "\"";
	}

	NodeMapData processResults(RDBMS::ResultStore &results)
	{
		NodeMapData d;
		d.i_node = results[0]["i_node"];
		d.i_type = results[0]["i_type"];
		DEBUG("i_node = " << d.i_node);
		DEBUG("i_type = " << d.i_type);
		return d;
	}
};

std::map<std::string, RDBMS::Cache::Data< NodeMapData > >
	RDBMS::Cache::Base<std::string, NodeMapData>::cache;

XCDR_NAMESPACE_END

#endif // XCDR_NODEMAP_H
