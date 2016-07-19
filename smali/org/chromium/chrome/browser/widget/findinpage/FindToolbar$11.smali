.class Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$11;
.super Ljava/lang/Object;
.source "FindToolbar.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

.field final synthetic val$announcementText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$11;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    iput-object p2, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$11;->val$announcementText:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 476
    iget-object v0, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$11;->this$0:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;

    iget-object v0, v0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar;->mFindQuery:Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;

    iget-object v1, p0, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$11;->val$announcementText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/widget/findinpage/FindToolbar$FindQuery;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 477
    return-void
.end method
