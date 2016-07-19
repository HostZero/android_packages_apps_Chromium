.class public Lorg/chromium/chrome/browser/infobar/SimpleConfirmInfoBarBuilder;
.super Ljava/lang/Object;
.source "SimpleConfirmInfoBarBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method public static create(Lorg/chromium/chrome/browser/tab/Tab;ILjava/lang/String;Z)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 53
    const/4 v3, 0x0

    move-object v0, p0

    move v2, p1

    move-object v4, p2

    move-object v5, v1

    move-object v6, v1

    move v7, p3

    invoke-static/range {v0 .. v7}, Lorg/chromium/chrome/browser/infobar/SimpleConfirmInfoBarBuilder;->create(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/infobar/SimpleConfirmInfoBarBuilder$Listener;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 54
    return-void
.end method

.method public static create(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/infobar/SimpleConfirmInfoBarBuilder$Listener;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 8

    .prologue
    .line 71
    invoke-virtual {p0}, Lorg/chromium/chrome/browser/tab/Tab;->getWindowAndroid()Lorg/chromium/ui/base/WindowAndroid;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/ui/base/WindowAndroid;->getActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 72
    if-eqz v0, :cond_0

    if-nez p3, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move-object v0, p0

    move v1, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move v6, p7

    move-object v7, p1

    .line 74
    invoke-static/range {v0 .. v7}, Lorg/chromium/chrome/browser/infobar/SimpleConfirmInfoBarBuilder;->nativeCreate(Lorg/chromium/chrome/browser/tab/Tab;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V

    .line 76
    return-void

    .line 72
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0
.end method

.method private static native nativeCreate(Lorg/chromium/chrome/browser/tab/Tab;ILandroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/Object;)V
.end method

.method private static onInfoBarButtonClicked(Lorg/chromium/chrome/browser/infobar/SimpleConfirmInfoBarBuilder$Listener;Z)V
    .locals 0

    .prologue
    .line 85
    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lorg/chromium/chrome/browser/infobar/SimpleConfirmInfoBarBuilder$Listener;->onInfoBarButtonClicked(Z)V

    .line 86
    :cond_0
    return-void
.end method

.method private static onInfoBarDismissed(Lorg/chromium/chrome/browser/infobar/SimpleConfirmInfoBarBuilder$Listener;)V
    .locals 0

    .prologue
    .line 80
    if-eqz p0, :cond_0

    invoke-interface {p0}, Lorg/chromium/chrome/browser/infobar/SimpleConfirmInfoBarBuilder$Listener;->onInfoBarDismissed()V

    .line 81
    :cond_0
    return-void
.end method
