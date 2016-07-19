.class Lorg/chromium/chrome/browser/ChromeTabbedActivity$3;
.super Ljava/lang/Object;
.source "ChromeTabbedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$3;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$3;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getCurrentTabCreator()Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tabmodel/ChromeTabCreator;->launchNTP()V

    .line 494
    return-void
.end method
