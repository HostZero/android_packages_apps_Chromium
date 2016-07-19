.class Lorg/chromium/chrome/browser/ChromeTabbedActivity$4;
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
    .line 496
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$4;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 499
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$4;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    iget-object v1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$4;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->getActivityTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->addOrEditBookmark(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 500
    return-void
.end method
