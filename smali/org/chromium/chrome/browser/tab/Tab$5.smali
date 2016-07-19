.class Lorg/chromium/chrome/browser/tab/Tab$5;
.super Ljava/lang/Object;
.source "Tab.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .prologue
    .line 1786
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/Tab$5;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 1789
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/Tab$5;->this$0:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->reload()V

    .line 1790
    return-void
.end method
