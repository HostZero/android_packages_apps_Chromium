.class public Lorg/chromium/chrome/browser/infobar/GeneratedPasswordSavedInfoBarDelegate;
.super Ljava/lang/Object;
.source "GeneratedPasswordSavedInfoBarDelegate.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static show(ILjava/lang/String;IILjava/lang/String;)Lorg/chromium/chrome/browser/infobar/InfoBar;
    .locals 6

    .prologue
    .line 25
    new-instance v0, Lorg/chromium/chrome/browser/infobar/GeneratedPasswordSavedInfoBar;

    invoke-static {p0}, Lorg/chromium/chrome/browser/ResourceId;->mapToDrawableId(I)I

    move-result v1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/chromium/chrome/browser/infobar/GeneratedPasswordSavedInfoBar;-><init>(ILjava/lang/String;IILjava/lang/String;)V

    return-object v0
.end method
