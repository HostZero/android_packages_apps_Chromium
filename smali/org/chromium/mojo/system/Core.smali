.class public interface abstract Lorg/chromium/mojo/system/Core;
.super Ljava/lang/Object;
.source "Core.java"


# static fields
.field public static final DEADLINE_INFINITE:J = -0x1L


# virtual methods
.method public abstract acquireNativeHandle(I)Lorg/chromium/mojo/system/UntypedHandle;
.end method

.method public abstract createMessagePipe(Lorg/chromium/mojo/system/MessagePipeHandle$CreateOptions;)Lorg/chromium/mojo/system/Pair;
.end method

.method public abstract getDefaultAsyncWaiter()Lorg/chromium/mojo/system/AsyncWaiter;
.end method
