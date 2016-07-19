.class Lorg/chromium/chrome/browser/metrics/UmaSessionStats$1;
.super Ljava/lang/Object;
.source "UmaSessionStats.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/metrics/UmaSessionStats;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/metrics/UmaSessionStats;)V
    .locals 0

    .prologue
    .line 87
    iput-object p1, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats$1;->this$0:Lorg/chromium/chrome/browser/metrics/UmaSessionStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 95
    iget-object v1, p0, Lorg/chromium/chrome/browser/metrics/UmaSessionStats$1;->this$0:Lorg/chromium/chrome/browser/metrics/UmaSessionStats;

    iget v2, p1, Landroid/content/res/Configuration;->keyboard:I

    if-eq v2, v0, :cond_0

    :goto_0
    # setter for: Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->mKeyboardConnected:Z
    invoke-static {v1, v0}, Lorg/chromium/chrome/browser/metrics/UmaSessionStats;->access$002(Lorg/chromium/chrome/browser/metrics/UmaSessionStats;Z)Z

    .line 96
    return-void

    .line 95
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 91
    return-void
.end method
