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
// $Source: /usr/local/cvs/xcdr/src/include/common/common.h,v $
// $Revision: 1.2 $
// $Date: 2003/04/02 20:34:25 $
// $Author: tmarsh $
//
// -------------------------------------------------------------------------
//
// $Log: common.h,v $
// Revision 1.2  2003/04/02 20:34:25  tmarsh
// added XCDR namespace
//
// Revision 1.1  2003/03/09 08:35:31  tmarsh
// include file reorganization
//
// Revision 1.2  2003/03/06 11:20:02  tmarsh
// updated headers
//
//
// =========================================================================

#ifndef XCDR_COMMON_COMMON_H
#define XCDR_COMMON_COMMON_H

#define XCDR_NAMESPACE_BEGIN	namespace XCDR {
#define XCDR_NAMESPACE_END	}

#define XCDR_NAMESPACE_USE	using namespace XCDR

#define assert(x) if (!(x)) { abort(); }

#endif // XCDR_COMMON_COMMON_H
