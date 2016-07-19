.class public Lorg/chromium/chrome/browser/omnibox/AnswersImage;
.super Ljava/lang/Object;
.source "AnswersImage.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method private static native nativeCancelAnswersImageRequest(Lorg/chromium/chrome/browser/profiles/Profile;I)V
.end method

.method private static native nativeRequestAnswersImage(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Lorg/chromium/chrome/browser/omnibox/AnswersImage$AnswersImageObserver;)I
.end method

.method public static requestAnswersImage(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Lorg/chromium/chrome/browser/omnibox/AnswersImage$AnswersImageObserver;)I
    .locals 1

    .prologue
    .line 39
    invoke-static {p0, p1, p2}, Lorg/chromium/chrome/browser/omnibox/AnswersImage;->nativeRequestAnswersImage(Lorg/chromium/chrome/browser/profiles/Profile;Ljava/lang/String;Lorg/chromium/chrome/browser/omnibox/AnswersImage$AnswersImageObserver;)I

    move-result v0

    return v0
.end method
