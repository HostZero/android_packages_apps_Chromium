.class Lorg/chromium/chrome/browser/physicalweb/PwsResult;
.super Ljava/lang/Object;
.source "PwsResult.java"


# instance fields
.field public final description:Ljava/lang/String;

.field public final iconUrl:Ljava/lang/String;

.field public final requestUrl:Ljava/lang/String;

.field public final siteUrl:Ljava/lang/String;

.field public final title:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/chromium/chrome/browser/physicalweb/PwsResult;->requestUrl:Ljava/lang/String;

    .line 45
    iput-object p2, p0, Lorg/chromium/chrome/browser/physicalweb/PwsResult;->siteUrl:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lorg/chromium/chrome/browser/physicalweb/PwsResult;->iconUrl:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lorg/chromium/chrome/browser/physicalweb/PwsResult;->title:Ljava/lang/String;

    .line 48
    iput-object p5, p0, Lorg/chromium/chrome/browser/physicalweb/PwsResult;->description:Ljava/lang/String;

    .line 49
    return-void
.end method
