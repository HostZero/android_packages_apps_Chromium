.class Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$4;
.super Landroid/content/BroadcastReceiver;
.source "SupervisedUserContentProvider.java"


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;)V
    .locals 0

    .prologue
    .line 207
    iput-object p1, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$4;->this$0:Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider$4;->this$0:Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;

    # invokes: Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->updateEnabledState()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;->access$200(Lorg/chromium/chrome/browser/superviseduser/SupervisedUserContentProvider;)V

    .line 211
    return-void
.end method
