.class Lorg/chromium/chrome/browser/preferences/HomepageEditor$3;
.super Ljava/lang/Object;
.source "HomepageEditor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/HomepageEditor;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/HomepageEditor;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor$3;->this$0:Lorg/chromium/chrome/browser/preferences/HomepageEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/HomepageEditor$3;->this$0:Lorg/chromium/chrome/browser/preferences/HomepageEditor;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/HomepageEditor;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 97
    return-void
.end method
