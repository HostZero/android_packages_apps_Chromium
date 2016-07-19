.class public Lorg/chromium/chrome/browser/omnibox/OmniboxViewUtil;
.super Ljava/lang/Object;
.source "OmniboxViewUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static native nativeSanitizeTextForPaste(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public static sanitizeTextForPaste(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    invoke-static {p0}, Lorg/chromium/chrome/browser/omnibox/OmniboxViewUtil;->nativeSanitizeTextForPaste(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
