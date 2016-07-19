.class public Lorg/chromium/chrome/browser/compositor/resources/StaticResourcePreloads;
.super Ljava/lang/Object;
.source "StaticResourcePreloads.java"


# static fields
.field private static sAsynchronousResources:[I

.field private static sEmptyList:[I

.field private static sSynchronousResources:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    const/16 v0, 0xa

    new-array v0, v0, [I

    sget v1, Lorg/chromium/chrome/R$drawable;->bg_tabstrip_tab:I

    aput v1, v0, v3

    sget v1, Lorg/chromium/chrome/R$drawable;->bg_tabstrip_background_tab:I

    aput v1, v0, v4

    sget v1, Lorg/chromium/chrome/R$drawable;->btn_tab_close_normal:I

    aput v1, v0, v5

    const/4 v1, 0x3

    sget v2, Lorg/chromium/chrome/R$drawable;->btn_tab_close_white_normal:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lorg/chromium/chrome/R$drawable;->btn_tab_close_pressed:I

    aput v2, v0, v1

    const/4 v1, 0x5

    sget v2, Lorg/chromium/chrome/R$drawable;->btn_tabstrip_new_tab_normal:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lorg/chromium/chrome/R$drawable;->btn_tabstrip_new_incognito_tab_normal:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lorg/chromium/chrome/R$drawable;->btn_tabstrip_new_tab_pressed:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lorg/chromium/chrome/R$drawable;->spinner:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lorg/chromium/chrome/R$drawable;->spinner_white:I

    aput v2, v0, v1

    sput-object v0, Lorg/chromium/chrome/browser/compositor/resources/StaticResourcePreloads;->sSynchronousResources:[I

    .line 28
    new-array v0, v5, [I

    sget v1, Lorg/chromium/chrome/R$drawable;->btn_tabstrip_switch_normal:I

    aput v1, v0, v3

    sget v1, Lorg/chromium/chrome/R$drawable;->btn_tabstrip_switch_incognito:I

    aput v1, v0, v4

    sput-object v0, Lorg/chromium/chrome/browser/compositor/resources/StaticResourcePreloads;->sAsynchronousResources:[I

    .line 31
    new-array v0, v3, [I

    sput-object v0, Lorg/chromium/chrome/browser/compositor/resources/StaticResourcePreloads;->sEmptyList:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAsynchronousResources(Landroid/content/Context;)[I
    .locals 1

    .prologue
    .line 39
    invoke-static {p0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/compositor/resources/StaticResourcePreloads;->sAsynchronousResources:[I

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/compositor/resources/StaticResourcePreloads;->sEmptyList:[I

    goto :goto_0
.end method

.method public static getSynchronousResources(Landroid/content/Context;)[I
    .locals 1

    .prologue
    .line 34
    invoke-static {p0}, Lorg/chromium/ui/base/DeviceFormFactor;->isTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lorg/chromium/chrome/browser/compositor/resources/StaticResourcePreloads;->sSynchronousResources:[I

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lorg/chromium/chrome/browser/compositor/resources/StaticResourcePreloads;->sEmptyList:[I

    goto :goto_0
.end method
