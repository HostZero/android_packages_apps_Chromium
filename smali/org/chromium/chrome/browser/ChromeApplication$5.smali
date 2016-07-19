.class Lorg/chromium/chrome/browser/ChromeApplication$5;
.super Lorg/chromium/chrome/browser/preferences/LocationSettings;
.source "ChromeApplication.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeApplication;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeApplication;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 509
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeApplication$5;->this$0:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-direct {p0, p2}, Lorg/chromium/chrome/browser/preferences/LocationSettings;-><init>(Landroid/content/Context;)V

    return-void
.end method
