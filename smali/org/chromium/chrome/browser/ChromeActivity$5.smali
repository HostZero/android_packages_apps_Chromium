.class Lorg/chromium/chrome/browser/ChromeActivity$5;
.super Ljava/lang/Object;
.source "ChromeActivity.java"

# interfaces
.implements Lorg/chromium/chrome/browser/sync/ProfileSyncService$SyncStateChangedListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeActivity;)V
    .locals 0

    .prologue
    .line 621
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeActivity$5;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public syncStateChanged()V
    .locals 1

    .prologue
    .line 624
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeActivity$5;->this$0:Lorg/chromium/chrome/browser/ChromeActivity;

    # invokes: Lorg/chromium/chrome/browser/ChromeActivity;->createContextReporterIfNeeded()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeActivity;->access$600(Lorg/chromium/chrome/browser/ChromeActivity;)V

    .line 625
    return-void
.end method
