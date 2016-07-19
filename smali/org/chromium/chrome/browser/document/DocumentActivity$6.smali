.class Lorg/chromium/chrome/browser/document/DocumentActivity$6;
.super Ljava/lang/Object;
.source "DocumentActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/document/DocumentActivity;)V
    .locals 0

    .prologue
    .line 818
    iput-object p1, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$6;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 821
    iget-object v0, p0, Lorg/chromium/chrome/browser/document/DocumentActivity$6;->this$0:Lorg/chromium/chrome/browser/document/DocumentActivity;

    const/4 v1, 0x0

    # invokes: Lorg/chromium/chrome/browser/document/DocumentActivity;->launchNtp(Z)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/document/DocumentActivity;->access$1400(Lorg/chromium/chrome/browser/document/DocumentActivity;Z)V

    .line 822
    return-void
.end method
