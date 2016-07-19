.class Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$1;
.super Ljava/lang/Object;
.source "ToolbarProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;)V
    .locals 0

    .prologue
    .line 60
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$1;->this$0:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 63
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar$1;->this$0:Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;

    const/4 v1, 0x0

    # invokes: Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->animateAlphaTo(F)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;->access$000(Lorg/chromium/chrome/browser/widget/ToolbarProgressBar;F)V

    .line 64
    return-void
.end method
