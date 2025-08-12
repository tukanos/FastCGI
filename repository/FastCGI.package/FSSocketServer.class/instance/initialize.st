other
initialize
	"Private - 
	-connections can have elements added and removed from multiple processes.
	-The only functionality needed from the connections i.v. is the ability to close outstanding connections prematurely on a server stop."

	"super initialize."
	connections := "SharedSet" Set new.
	elapsedTime := 0.0.
	elapsedTimeMutex := TransientSemaphore forMutualExclusion