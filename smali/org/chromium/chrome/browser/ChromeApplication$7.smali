.class Lorg/chromium/chrome/browser/ChromeApplication$7;
.super Lorg/chromium/chrome/browser/policy/PolicyAuditor;
.source "ChromeApplication.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeApplication;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeApplication;)V
    .locals 0

    .prologue
    .line 701
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeApplication$7;->this$0:Lorg/chromium/chrome/browser/ChromeApplication;

    invoke-direct {p0}, Lorg/chromium/chrome/browser/policy/PolicyAuditor;-><init>()V

    return-void
.end method
