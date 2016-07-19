.class public interface abstract Lorg/chromium/content/browser/input/ChromiumBaseInputConnection;
.super Ljava/lang/Object;
.source "ChromiumBaseInputConnection.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# virtual methods
.method public abstract getHandler()Landroid/os/Handler;
.end method

.method public abstract moveCursorToSelectionEndOnUiThread()V
.end method

.method public abstract onRestartInputOnUiThread()V
.end method

.method public abstract sendKeyEventOnUiThread(Landroid/view/KeyEvent;)Z
.end method

.method public abstract unblockOnUiThread()V
.end method

.method public abstract updateStateOnUiThread(Ljava/lang/String;IIIIZZ)V
.end method
