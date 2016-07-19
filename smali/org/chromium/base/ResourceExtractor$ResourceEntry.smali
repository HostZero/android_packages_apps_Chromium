.class public final Lorg/chromium/base/ResourceExtractor$ResourceEntry;
.super Ljava/lang/Object;
.source "ResourceExtractor.java"


# instance fields
.field public final extractedFileName:Ljava/lang/String;

.field public final pathWithinApk:Ljava/lang/String;

.field public final resourceId:I


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput p1, p0, Lorg/chromium/base/ResourceExtractor$ResourceEntry;->resourceId:I

    .line 53
    iput-object p2, p0, Lorg/chromium/base/ResourceExtractor$ResourceEntry;->pathWithinApk:Ljava/lang/String;

    .line 54
    iput-object p3, p0, Lorg/chromium/base/ResourceExtractor$ResourceEntry;->extractedFileName:Ljava/lang/String;

    .line 55
    return-void
.end method
