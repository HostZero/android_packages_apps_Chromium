.class Lorg/chromium/chrome/browser/preferences/LearnMorePreference$1;
.super Ljava/lang/Object;
.source "LearnMorePreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/LearnMorePreference;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/LearnMorePreference;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/LearnMorePreference$1;->this$0:Lorg/chromium/chrome/browser/preferences/LearnMorePreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/LearnMorePreference$1;->this$0:Lorg/chromium/chrome/browser/preferences/LearnMorePreference;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/preferences/LearnMorePreference;->onClick()V

    .line 57
    return-void
.end method
