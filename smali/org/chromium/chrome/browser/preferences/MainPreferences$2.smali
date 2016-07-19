.class Lorg/chromium/chrome/browser/preferences/MainPreferences$2;
.super Ljava/lang/Object;
.source "MainPreferences.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lorg/chromium/chrome/browser/preferences/MainPreferences;


# direct methods
.method constructor <init>(Lorg/chromium/chrome/browser/preferences/MainPreferences;)V
    .locals 0

    .prologue
    .line 171
    iput-object p1, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences$2;->this$0:Lorg/chromium/chrome/browser/preferences/MainPreferences;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 174
    iget-object v0, p0, Lorg/chromium/chrome/browser/preferences/MainPreferences$2;->this$0:Lorg/chromium/chrome/browser/preferences/MainPreferences;

    # invokes: Lorg/chromium/chrome/browser/preferences/MainPreferences;->updatePreferences()V
    invoke-static {v0}, Lorg/chromium/chrome/browser/preferences/MainPreferences;->access$100(Lorg/chromium/chrome/browser/preferences/MainPreferences;)V

    .line 175
    return-void
.end method
