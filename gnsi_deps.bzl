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
            sha256 = "a015f3f2ebf4f1ac3f4ca8ea371610acb63e1903514fa8725272d381948d2747",
            strip_prefix = "bazel_features-1.31.0",
            url = "https://github.com/bazel-contrib/bazel_features/releases/download/v1.31.0/bazel_features-v1.31.0.tar.gz",
        )
    if not native.existing_rule("bazel_gazelle"):
        http_archive(
            name = "bazel_gazelle",
            sha256 = "7c40b746387cd0c9a4d5bb0b2035abd134b3f7511015710a5ee5e07591008dde",
            urls = [
                "https://mirror.bazel.build/github.com/bazelbuild/bazel-gazelle/releases/download/v0.43.0/bazel-gazelle-v0.43.0.tar.gz",
                "https://github.com/bazelbuild/bazel-gazelle/releases/download/v0.43.0/bazel-gazelle-v0.43.0.tar.gz",
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
            sha256 = "49245c73595a0e9bc54a1a424476f6c0d38c2567b98ea98ceac0930229298827",
            strip_prefix = "googleapis-e44cf6a5a08e79ffb3e9cc4012e1f25eb4938138",
            urls = ["https://github.com/googleapis/googleapis/archive/e44cf6a5a08e79ffb3e9cc4012e1f25eb4938138.tar.gz"],
        )
    if not native.existing_rule("com_google_protobuf"):
        http_archive(
            name = "com_google_protobuf",
            url = "https://github.com/protocolbuffers/protobuf/archive/refs/tags/v29.5.zip",
            strip_prefix = "protobuf-29.5",
            sha256 = "3d5f767680cfbff29b6f847a2c6f0f10c4dd2e93fb77e9c115d85b2a77a09b2d",
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
            sha256 = "c6cf9da6668ac84c470c43cbfccb8fdc844ead2b5a8b918e2816d44f2986f644",
            urls = [
                "https://github.com/bazelbuild/rules_go/releases/download/v0.55.0/rules_go-v0.55.0.zip",
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
