.class Lorg/chromium/chrome/browser/ntp/LogoBridge$Logo;
.super Ljava/lang/Object;
.source "LogoBridge.java"


# instance fields
.field public final altText:Ljava/lang/String;

.field public final animatedLogoUrl:Ljava/lang/String;

.field public final image:Landroid/graphics/Bitmap;

.field public final onClickUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    iput-object p1, p0, Lorg/chromium/chrome/browser/ntp/LogoBridge$Logo;->image:Landroid/graphics/Bitmap;

    .line 45
    iput-object p2, p0, Lorg/chromium/chrome/browser/ntp/LogoBridge$Logo;->onClickUrl:Ljava/lang/String;

    .line 46
    iput-object p3, p0, Lorg/chromium/chrome/browser/ntp/LogoBridge$Logo;->altText:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Lorg/chromium/chrome/browser/ntp/LogoBridge$Logo;->animatedLogoUrl:Ljava/lang/String;

    .line 48
    return-void
.end method
