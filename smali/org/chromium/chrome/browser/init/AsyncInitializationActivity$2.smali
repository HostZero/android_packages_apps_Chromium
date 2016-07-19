.class Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$2;
.super Ljava/lang/Object;
.source "AsyncInitializationActivity.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$2;->this$0:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity$2;->this$0:Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;

    # invokes: Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->checkOrientation()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;->access$000(Lorg/chromium/chrome/browser/init/AsyncInitializationActivity;)V

    .line 164
    return-void
.end method
