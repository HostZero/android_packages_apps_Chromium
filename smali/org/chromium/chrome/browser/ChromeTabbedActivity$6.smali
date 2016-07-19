.class Lorg/chromium/chrome/browser/ChromeTabbedActivity$6;
.super Ljava/lang/Object;
.source "ChromeTabbedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)V
    .locals 0

    .prologue
    .line 596
    iput-object p1, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$6;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lorg/chromium/chrome/browser/ChromeTabbedActivity$6;->this$0:Lorg/chromium/chrome/browser/ChromeTabbedActivity;

    # invokes: Lorg/chromium/chrome/browser/ChromeTabbedActivity;->createInitialTab()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/ChromeTabbedActivity;->access$500(Lorg/chromium/chrome/browser/ChromeTabbedActivity;)V

    .line 600
    return-void
.end method
