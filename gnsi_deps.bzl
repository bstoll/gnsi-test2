# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
"""Dependencies to build gnsi."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")

def gnsi_deps():
    """Declare the third-party dependencies necessary to build gnsi"""
    if not native.existing_rule("bazel_features"):
        http_archive(
            name = "bazel_features",
            sha256 = "07bd2b18764cdee1e0d6ff42c9c0a6111ffcbd0c17f0de38e7f44f1519d1c0cd",
            strip_prefix = "bazel_features-1.32.0",
            url = "https://github.com/bazel-contrib/bazel_features/releases/download/v1.32.0/bazel_features-v1.32.0.tar.gz",
        )
    if not native.existing_rule("bazel_gazelle"):
        http_archive(
            name = "bazel_gazelle",
            sha256 = "49b14c691ceec841f445f8642d28336e99457d1db162092fd5082351ea302f1d",
            urls = [
                "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.44.0/bazel-gazelle-v0.44.0.tar.gz",
                "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.44.0/bazel-gazelle-v0.44.0.tar.gz",
            ],
        )
    if not native.existing_rule("com_github_grpc_grpc"):
        http_archive(
            name = "com_github_grpc_grpc",
            url = "https://github.com/grpc/grpc/archive/refs/tags/v1.73.0.tar.gz",
            strip_prefix = "grpc-1.73.0",
            sha256 = "00865dbc3d7689fd9c5c7d0a10822a4eae175ca692870433b64106abcb1294a0",
        )
    if not native.existing_rule("com_google_googleapis"):
        http_archive(
            name = "com_google_googleapis",
            sha256 = "732c8d2ff169057afd2f439e27980b668b020400aa3a1fde955abbecc775c729",
            strip_prefix = "googleapis-ab2a1255dca2b42ebce6d09ba85d3f48ebbeae85",
            urls = ["https://github.com/googleapis/googleapis/archive/ab2a1255dca2b42ebce6d09ba85d3f48ebbeae85.tar.gz"],
        )
    if not native.existing_rule("com_google_protobuf"):
        http_archive(
            name = "com_google_protobuf",
            url = "https://github.com/protocolbuffers/protobuf/archive/refs/tags/v31.1.zip",
            strip_prefix = "protobuf-31.1",
            sha256 = "fc6289aa4450bdb70626aceaaebebdd7d3d4725c288a9cbb138a26defe5d9987",
            repo_mapping = {
                "@proto_bazel_features": "@bazel_features",
            },
        )
    if not native.existing_rule("bazel_skylib"):
        http_archive(
            name = "bazel_skylib",
            urls = [
                "https://mirror.bazel.build/github.com/bazelbuild/bazel-skylib/releases/download/1.7.1/bazel-skylib-1.7.1.tar.gz",
                "https://github.com/bazelbuild/bazel-skylib/releases/download/1.7.1/bazel-skylib-1.7.1.tar.gz",
            ],
            sha256 = "bc283cdfcd526a52c3201279cda4bc298652efa898b10b4db0837dc51652756f",
        )
    if not native.existing_rule("io_bazel_rules_go"):
        http_archive(
            name = "io_bazel_rules_go",
            sha256 = "9d72f7b8904128afb98d46bbef82ad7223ec9ff3718d419afb355fddd9f9484a",
            urls = [
                "https://github.com/bazelbuild/rules_go/releases/download/v0.55.1/rules_go-v0.55.1.zip",
            ],
        )
    if not native.existing_rule("rules_proto"):
        http_archive(
            name = "rules_proto",
            sha256 = "14a225870ab4e91869652cfd69ef2028277fc1dc4910d65d353b62d6e0ae21f4",
            strip_prefix = "rules_proto-7.1.0",
            url = "https://github.com/bazelbuild/rules_proto/releases/download/7.1.0/rules_proto-7.1.0.tar.gz",
        )
    if not native.existing_rule("openconfig_gnmi"):
        http_archive(
            name = "openconfig_gnmi",
            sha256 = "813f8a52dfa06dd1b9a2c775b26c42d36a05595dfa6fb0a85dbaead46b5c43a3",
            strip_prefix = "gnmi-0.14.1",
            url = "https://github.com/openconfig/gnmi/archive/refs/tags/v0.14.1.tar.gz",
        )
