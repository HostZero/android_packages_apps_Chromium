.class public final Lorg/chromium/chrome/browser/signin/SigninInvestigator;
.super Ljava/lang/Object;
.source "SigninInvestigator.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static investigate(Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 20
    invoke-static {p0}, Lorg/chromium/chrome/browser/signin/SigninInvestigator;->nativeInvestigate(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static native nativeInvestigate(Ljava/lang/String;)I
.end method
