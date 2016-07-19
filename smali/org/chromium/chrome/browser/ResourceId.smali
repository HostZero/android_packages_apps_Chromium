.class public Lorg/chromium/chrome/browser/ResourceId;
.super Ljava/lang/Object;
.source "ResourceId.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const-class v0, Lorg/chromium/chrome/browser/ResourceId;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lorg/chromium/chrome/browser/ResourceId;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mapToDrawableId(I)I
    .locals 4

    .prologue
    const/16 v3, 0x20

    const/4 v1, 0x0

    .line 11
    new-array v0, v3, [I

    aput v1, v0, v1

    const/4 v1, 0x1

    sget v2, Lorg/chromium/chrome/R$drawable;->infobar_3d_blocked:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lorg/chromium/chrome/R$drawable;->infobar_autofill_cc:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lorg/chromium/chrome/R$drawable;->infobar_camera:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lorg/chromium/chrome/R$drawable;->infobar_microphone:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lorg/chromium/chrome/R$drawable;->infobar_midi:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lorg/chromium/chrome/R$drawable;->infobar_multiple_downloads:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lorg/chromium/chrome/R$drawable;->infobar_savepassword:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lorg/chromium/chrome/R$drawable;->infobar_warning:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lorg/chromium/chrome/R$drawable;->infobar_translate:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lorg/chromium/chrome/R$drawable;->infobar_blocked_popups:I

    aput v2, v0, v1

    const/16 v1, 0xb

    sget v2, Lorg/chromium/chrome/R$drawable;->infobar_protected_media_identifier:I

    aput v2, v0, v1

    const/16 v1, 0xc

    sget v2, Lorg/chromium/chrome/R$drawable;->infobar_desktop_notifications:I

    aput v2, v0, v1

    const/16 v1, 0xd

    sget v2, Lorg/chromium/chrome/R$drawable;->infobar_geolocation:I

    aput v2, v0, v1

    const/16 v1, 0xe

    sget v2, Lorg/chromium/chrome/R$drawable;->infobar_restore:I

    aput v2, v0, v1

    const/16 v1, 0xf

    sget v2, Lorg/chromium/chrome/R$drawable;->infobar_fullscreen:I

    aput v2, v0, v1

    const/16 v1, 0x10

    sget v2, Lorg/chromium/chrome/R$drawable;->pageinfo_good:I

    aput v2, v0, v1

    const/16 v1, 0x11

    sget v2, Lorg/chromium/chrome/R$drawable;->pageinfo_warning:I

    aput v2, v0, v1

    const/16 v1, 0x12

    sget v2, Lorg/chromium/chrome/R$drawable;->pageinfo_bad:I

    aput v2, v0, v1

    const/16 v1, 0x13

    sget v2, Lorg/chromium/chrome/R$drawable;->pageinfo_warning:I

    aput v2, v0, v1

    const/16 v1, 0x14

    sget v2, Lorg/chromium/chrome/R$drawable;->pageinfo_warning:I

    aput v2, v0, v1

    const/16 v1, 0x15

    sget v2, Lorg/chromium/chrome/R$drawable;->pageinfo_warning:I

    aput v2, v0, v1

    const/16 v1, 0x16

    sget v2, Lorg/chromium/chrome/R$drawable;->amex_card:I

    aput v2, v0, v1

    const/16 v1, 0x17

    sget v2, Lorg/chromium/chrome/R$drawable;->discover_card:I

    aput v2, v0, v1

    const/16 v1, 0x18

    sget v2, Lorg/chromium/chrome/R$drawable;->generic_card:I

    aput v2, v0, v1

    const/16 v1, 0x19

    sget v2, Lorg/chromium/chrome/R$drawable;->mc_card:I

    aput v2, v0, v1

    const/16 v1, 0x1a

    sget v2, Lorg/chromium/chrome/R$drawable;->visa_card:I

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0x1080037

    aput v2, v0, v1

    const/16 v1, 0x1c

    sget v2, Lorg/chromium/chrome/R$drawable;->ic_photo_camera:I

    aput v2, v0, v1

    const/16 v1, 0x1d

    sget v2, Lorg/chromium/chrome/R$drawable;->cvc_icon:I

    aput v2, v0, v1

    const/16 v1, 0x1e

    sget v2, Lorg/chromium/chrome/R$drawable;->cvc_icon_amex:I

    aput v2, v0, v1

    const/16 v1, 0x1f

    sget v2, Lorg/chromium/chrome/R$drawable;->ic_settings:I

    aput v2, v0, v1

    .line 74
    if-ltz p0, :cond_0

    if-ge p0, v3, :cond_0

    .line 75
    aget v0, v0, p0

    .line 78
    :goto_0
    return v0

    .line 77
    :cond_0
    sget-boolean v0, Lorg/chromium/chrome/browser/ResourceId;->$assertionsDisabled:Z

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "enumeratedId \'"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\' was out of range."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 78
    :cond_1
    sget v0, Lorg/chromium/chrome/R$drawable;->missing:I

    goto :goto_0
.end method
