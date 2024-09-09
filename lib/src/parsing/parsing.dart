// Copyright 2019 terrier989@gmail.com
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'package:universal_html_compat/html.dart';
import 'package:universal_html_compat/html.dart' as universal_html;

import 'parsing_impl_vm.dart' as impl;

/// Parses a [HtmlDocument].
///
/// ```
/// import 'package:universal_html_compat/parsing.dart';
///
/// void main() {
///   final document = parseHtmlDocument('<html>...</html>');
/// }
/// ```
HtmlDocument parseHtmlDocument(
  String content, {
  Window? window,
}) {
  window ??= universal_html.window;
  return impl.parseHtmlDocument(
    window: window,
    content: content,
  );
}

/// Parses an [XmlDocument].
///
/// ```
/// import 'package:universal_html_compat/parsing.dart';
///
/// void main() {
///   final document = parseXmlDocument('<xml>...</xml>');
/// }
/// ```
XmlDocument parseXmlDocument(
  String content, {
  Window? window,
  String mime = 'text/xml',
}) {
  window ??= universal_html.window;
  return impl.parseXmlDocument(
    window: window,
    content: content,
    mime: mime,
  );
}
