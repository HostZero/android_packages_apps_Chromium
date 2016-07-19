.class public interface abstract Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener;
.super Ljava/lang/Object;
.source "InstanceListener.java"

# interfaces
.implements Lorg/chromium/mojo/bindings/Interface;


# static fields
.field public static final MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-object v0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener_Internal;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    sput-object v0, Lorg/chromium/mojom/mojo/shell/mojom/InstanceListener;->MANAGER:Lorg/chromium/mojo/bindings/Interface$Manager;

    return-void
.end method


# virtual methods
.method public abstract instanceCreated(Lorg/chromium/mojom/mojo/shell/mojom/InstanceInfo;)V
.end method

.method public abstract instanceDestroyed(I)V
.end method

.method public abstract instancePidAvailable(II)V
.end method

.method public abstract setExistingInstances([Lorg/chromium/mojom/mojo/shell/mojom/InstanceInfo;)V
.end method
