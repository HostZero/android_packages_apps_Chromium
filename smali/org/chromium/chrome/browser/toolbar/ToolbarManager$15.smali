.class Lorg/chromium/chrome/browser/toolbar/ToolbarManager$15;
.super Ljava/lang/Object;
.source "ToolbarManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/toolbar/ToolbarManager;)V
    .locals 0

    .prologue
    .line 816
    iput-object p1, p0, Lorg/chromium/chrome/browser/toolbar/ToolbarManager$15;->this$0:Lorg/chromium/chrome/browser/toolbar/ToolbarManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 819
    const-string/jumbo v0, "MobileToolbarShowMenu"

    invoke-static {v0}, Lorg/chromium/base/metrics/RecordUserAction;->record(Ljava/lang/String;)V

    .line 820
    return-void
.end method
