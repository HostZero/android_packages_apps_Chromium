.class Lorg/chromium/components/webrestrictions/WebRestrictionsClient$ShouldProceedResult;
.super Ljava/lang/Object;
.source "WebRestrictionsClient.java"


# instance fields
.field private final mErrorPage:Ljava/lang/String;

.field private final mShouldProceed:Z


# direct methods
.method constructor <init>(ZLjava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-boolean p1, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient$ShouldProceedResult;->mShouldProceed:Z

    .line 30
    iput-object p2, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient$ShouldProceedResult;->mErrorPage:Ljava/lang/String;

    .line 31
    return-void
.end method


# virtual methods
.method getErrorPage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient$ShouldProceedResult;->mErrorPage:Ljava/lang/String;

    return-object v0
.end method

.method shouldProceed()Z
    .locals 1

    .prologue
    .line 35
    iget-boolean v0, p0, Lorg/chromium/components/webrestrictions/WebRestrictionsClient$ShouldProceedResult;->mShouldProceed:Z

    return v0
.end method
