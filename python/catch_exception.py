import traceback

def catch_exception(func):
	def wrapper(*args, **kwargs):
		try:
			return func(*args, **kwargs)
		except Exception as e:
			print(e)
			traceback.format_exc()
			return None
	return wrapper