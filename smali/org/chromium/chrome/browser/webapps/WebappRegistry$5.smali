.class final Lorg/chromium/chrome/browser/webapps/WebappRegistry$5;
.super Ljava/lang/Object;
.source "WebappRegistry.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic val$callbackPointer:J


# direct methods
.method constructor <init>(J)V
    .locals 1

    .prologue
    .line 151
    iput-wide p1, p0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$5;->val$callbackPointer:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 154
    iget-wide v0, p0, Lorg/chromium/chrome/browser/webapps/WebappRegistry$5;->val$callbackPointer:J

    # invokes: Lorg/chromium/chrome/browser/webapps/WebappRegistry;->nativeOnWebappsUnregistered(J)V
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/webapps/WebappRegistry;->access$200(J)V

    .line 155
    return-void
.end method
