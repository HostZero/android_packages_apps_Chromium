.class Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$ThreeButtonMenuItemViewHolder;
.super Ljava/lang/Object;
.source "AppMenuAdapter.java"


# instance fields
.field public buttons:[Lorg/chromium/chrome/browser/widget/TintedImageButton;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    .line 404
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    const/4 v0, 0x3

    new-array v0, v0, [Lorg/chromium/chrome/browser/widget/TintedImageButton;

    iput-object v0, p0, Lorg/chromium/chrome/browser/appmenu/AppMenuAdapter$ThreeButtonMenuItemViewHolder;->buttons:[Lorg/chromium/chrome/browser/widget/TintedImageButton;

    return-void
.end method
