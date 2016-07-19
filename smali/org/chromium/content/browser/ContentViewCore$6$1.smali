.class Lorg/chromium/content/browser/ContentViewCore$6$1;
.super Ljava/lang/Object;
.source "ContentViewCore.java"

# interfaces
.implements Lorg/chromium/ui/base/WindowAndroid$IntentCallback;


# instance fields
.field final synthetic this$1:Lorg/chromium/content/browser/ContentViewCore$6;


# direct methods
.method constructor <init>(Lorg/chromium/content/browser/ContentViewCore$6;)V
    .locals 0

    .prologue
    .line 2054
    iput-object p1, p0, Lorg/chromium/content/browser/ContentViewCore$6$1;->this$1:Lorg/chromium/content/browser/ContentViewCore$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onIntentCompleted(Lorg/chromium/ui/base/WindowAndroid;ILandroid/content/ContentResolver;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 2059
    iget-object v0, p0, Lorg/chromium/content/browser/ContentViewCore$6$1;->this$1:Lorg/chromium/content/browser/ContentViewCore$6;

    iget-object v0, v0, Lorg/chromium/content/browser/ContentViewCore$6;->this$0:Lorg/chromium/content/browser/ContentViewCore;

    invoke-virtual {v0, p2, p4}, Lorg/chromium/content/browser/ContentViewCore;->onReceivedProcessTextResult(ILandroid/content/Intent;)V

    .line 2060
    return-void
.end method
